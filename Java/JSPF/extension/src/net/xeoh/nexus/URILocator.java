/*
 * URILoader.java
 * 
 * Copyright (c) 2011, Ralf Biedert, DFKI. All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, are
 * permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this list of
 * conditions and the following disclaimer. Redistributions in binary form must reproduce the
 * above copyright notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 * 
 * Neither the name of the author nor the names of its contributors may be used to endorse or
 * promote products derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
 * TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 */
package net.xeoh.nexus;

import java.net.MalformedURLException;
import java.net.URI;

import net.xeoh.nexus.options.Option;
import net.xeoh.nexus.options.Realm;

/**
 * Locates classes at a given URI.
 * 
 * @author Ralf Biedert
 * @since 1.0
 */
public abstract class URILocator extends Abstract2StageLocator {

    /** The realm in which we load */
    protected Realm realm;

    /** The URL we process */
    protected URI uri;

    /**
     * Locates classes in the given JAR.
     * 
     * @param uri Scan the given URI.
     * @param options The options this locator supports.
     */
    public URILocator(URI uri, Option... options) {
        super(options);

        // Process our options.
        for (Option option : options) {
            if (option instanceof Realm) {
                this.realm = (Realm) option;
            }
        }

        this.realm = this.realm == null ? Realm.NEW() : this.realm;
        this.uri = uri;

        // Try to add the URI to the class realm for access.
        try {
            this.realm.getClassRealm().addConstituent(uri.toURL());
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Returns a candidate for a given class.
     * 
     * @since 1.0
     * @param name
     * @return
     */
    Candidate candidate(final String name) {
        return new Candidate() {
            @Override
            public Abstract2StageLocator getLocator() {
                return URILocator.this;
            }

            @Override
            public String getCandidateClassName() {
                return name;
            }

            @Override
            public Class<?> getCandidateClass() {
                try {
                    return URILocator.this.realm.getClassRealm().loadClass(name);
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }

                return null;
            }
        };
    }

}