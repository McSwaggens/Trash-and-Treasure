package survival.game.scenes.game;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.Box2DDebugRenderer;
import com.badlogic.gdx.physics.box2d.World;
import com.badlogic.gdx.utils.viewport.FillViewport;
import com.badlogic.gdx.utils.viewport.Viewport;
import survival.game.Game;
import survival.game.files.GameFile;
import survival.game.net.client.GameClient;
import survival.game.net.client.GameClientConnection;
import survival.game.scenes.Scene;
import survival.game.scenes.game.entity.Player;
import survival.game.scenes.game.item.Material;
import survival.game.scenes.game.listeners.CollisionLister;
import survival.game.scenes.game.terrain.objects.GameObject;
import survival.game.scenes.game.ui.UIHandler;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;

public class GameScene extends Scene {

    private OrthographicCamera gameCamera;
    private Viewport viewport;
    private SpriteBatch spriteBatch;

    private ArrayList<GameObject> gameObjects;
    private ArrayList<GameObject> gameObjectsToRemove;
    private ArrayList<GameObject> gameObjectsToAdd;

    private Player player;
    private Terrain terrain;
    private UIHandler uiHandler;

    private boolean loadFile = false;


    // Box 2D
    private World world;
    private Box2DDebugRenderer b2dr;
    private ArrayList<Body> bodiesToRemove;
    private CollisionLister collisionLister;

    // Network
    GameClient networkClient;

    private LightHandler lightHandler;

    public GameScene() {

        gameCamera = new OrthographicCamera(Game.WIDTH, Game.HEIGHT);
        viewport = new FillViewport(Game.WIDTH, Game.HEIGHT, gameCamera);
        gameCamera.zoom = 1/Game.SCALE;
        gameCamera.update();
        spriteBatch = new SpriteBatch();

        // Box 2D
        world = new World(new Vector2(0, 0), true);
        //collisionLister = new CollisionLister();
        //world.setContactFilter(new FilterListener());
        //world.setContactListener(collisionLister);
        b2dr = new Box2DDebugRenderer();
        bodiesToRemove = new ArrayList<Body>();

        lightHandler = new LightHandler(this);

        gameObjects = new ArrayList<GameObject>();
        gameObjectsToRemove = new ArrayList<GameObject>();
        gameObjectsToAdd = new ArrayList<GameObject>();

        //setPlayer(new Player(64 * 32, 64 * 32, this, true, id));

        terrain = new Terrain(this);

        uiHandler = new UIHandler(this);

        uiHandler.getInventory().addItem(Material.TORCH);

        // Connect to the server
        try {
            networkClient = new GameClient(InetAddress.getByName("localhost"), 4357, this);
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void render() {
        spriteBatch.setProjectionMatrix(gameCamera.combined);

        terrain.render(spriteBatch);

        for(GameObject g: gameObjects){
            g.render(spriteBatch);
        }

        lightHandler.render(spriteBatch);

        //b2dr.render(world, gameCamera.combined.cpy().scale(Constants.PPM, Constants.PPM, 1));

        uiHandler.render();
        viewport.apply();


        Gdx.graphics.setTitle("FPS "+Gdx.graphics.getFramesPerSecond()+" Game Objects "+gameObjects.size());

    }

    @Override
    public void update(float dt) {
        world.step(dt, 6, 2);
        Iterator<Body> it = bodiesToRemove.iterator();
        while (it.hasNext()) {
            Body bod = it.next();
            bod.setActive(false);
            bod.setAwake(false);
            world.destroyBody(bod);
            it.remove();
        }

        for(GameObject g: gameObjectsToRemove){
            g.dispose();
            gameObjects.remove(g);
        }
        gameObjectsToRemove.clear();


        gameObjects.addAll(gameObjectsToAdd);
        gameObjectsToAdd.clear();


        lightHandler.update(dt);

        for(GameObject g: gameObjects){
            g.update(dt);
        }

        // Temporary save key
        if(Gdx.input.isKeyJustPressed(Input.Keys.P)){
            GameFile file = new GameFile(getGameObjects());
            file.save("survivalist.save");
        }

        if(loadFile){
            GameFile file = new GameFile(gameObjects);
            file.load("survivalist.save", this);
            loadFile = false;
        }

        // Temporary load key
        if(Gdx.input.isKeyJustPressed(Input.Keys.L)){
            clearGameObjects();
            loadFile = true;
        }



        if(Gdx.input.isKeyJustPressed(Input.Keys.C)){
            clearGameObjects();
        }

        terrain.update(dt);


        // Camera
        if(player!=null) {
            gameCamera.position.lerp(new Vector3(player.getPosition().x + player.getWidth() / 2, player.getPosition().y + player.getHeight() / 2, 0), 4f * dt);
            gameCamera.update();
        }
    }

    @Override
    public void resize(int width, int height){

        viewport.update(width, height);

        uiHandler.resize(width, height);
    }

    @Override
    public void dispose() {
        networkClient.disconnect();
        world.dispose();
        terrain.dispose();
    }

    public void removeBody(Body body) {
        bodiesToRemove.add(body);
    }

    public OrthographicCamera getGameCamera() {
        return gameCamera;
    }

    public SpriteBatch getSpriteBatch() {
        return spriteBatch;
    }

    public Terrain getTerrain() {
        return terrain;
    }

    public World getWorld() {
        return world;
    }

    public Player getPlayer() {
        return player;
    }

    public void setPlayer(Player player) {
        if(gameObjects.contains(this.getPlayer())){
            removeGameObject(this.getPlayer());
        }
        this.player = player;
        addGameObject(player);
    }

    public Viewport getViewport() {
        return viewport;
    }

    public CollisionLister getCollisionLister() {
        return collisionLister;
    }

    public UIHandler getUiHandler() {
        return uiHandler;
    }

    public LightHandler getLightHandler() {
        return lightHandler;
    }

    public ArrayList<GameObject> getGameObjects() {
        return gameObjects;
    }

    public ArrayList<GameObject> getGameObjectsToAdd() {
        return gameObjectsToAdd;
    }

    public ArrayList<GameObject> getGameObjectsToRemove() {
        return gameObjectsToRemove;
    }

    public void addGameObject(GameObject gameObjects) {
        this.gameObjectsToAdd.add(gameObjects);
    }

    public void removeGameObject(GameObject gameObject){
        gameObjectsToRemove.add(gameObject);
    }

    public void clearGameObjects(){
        gameObjectsToRemove.addAll(gameObjects);
    }

    public Player addNetworkPlayer(GameClientConnection connection){
        System.out.println("Adding network player object");
        Player player = new Player((int)connection.getX(), (int)connection.getY(), this, false);
        addGameObject(player);
        return player;
    }

    public void moveNetworkPlayer(Player player, Vector2 position){
        for(GameObject g: getGameObjects()){
            if(g.equals(player)){
                System.out.println("Updating network player position");
                Player gamePlayer = (Player) g;
                gamePlayer.setPosition(position);
                break;
            }
        }
    }

    public GameClient getNetworkClient() {
        return networkClient;
    }
}
