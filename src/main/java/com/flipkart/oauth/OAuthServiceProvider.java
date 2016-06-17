package com.flipkart.oauth;

import org.scribe.builder.ServiceBuilder;
import org.scribe.oauth.OAuthService;

public class OAuthServiceProvider {

    private OauthServiceConfig config;

    public OAuthServiceProvider() {
    }

    public OAuthServiceProvider(OauthServiceConfig config) {
        this.config = config;
    }

    public OAuthService getService() {
        System.out.println(config);
        return new ServiceBuilder().provider(config.getApiClass())
                .apiKey(config.getApiKey())
                .apiSecret(config.getApiSecret())
                .callback(config.getCallback())
                .scope(config.getScope())
                .build();
    }

}