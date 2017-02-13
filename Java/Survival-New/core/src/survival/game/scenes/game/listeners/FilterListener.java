package survival.game.scenes.game.listeners;

import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.ContactFilter;
import com.badlogic.gdx.physics.box2d.Fixture;
import survival.game.utills.box2D.Box2DTag;
import survival.game.utills.box2D.CustomUserData;

public class FilterListener implements ContactFilter {
    @Override
    public boolean shouldCollide(Fixture fixtureA, Fixture fixtureB) {
        Body[] bodies = new Body[2];
        bodies[0] = fixtureA.getBody();
        bodies[1] = fixtureB.getBody();

        for (int i = 0; i < 2; i++) {
            Body b1 = bodies[i];
            Body b2 = bodies[i == 0 ? 1 : 0];

            if (b1.getUserData() != null && b2.getUserData() != null) {
                CustomUserData b1UserData = (CustomUserData) b1.getUserData();
                CustomUserData b2UserData = (CustomUserData) b2.getUserData();

                if (b1UserData.getTag() == Box2DTag.PLAYER && b2UserData.getTag() == Box2DTag.ITEM) {
                    return false;
                }
            }
        }

        return true;
    }
}
