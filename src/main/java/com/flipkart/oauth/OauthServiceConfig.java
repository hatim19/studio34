package com.flipkart.oauth;

public class OauthServiceConfig {

    private String apiKey;
    private String apiSecret;
    private String callback;
    private Class apiClass;
    private String scope;

    public OauthServiceConfig() {
    }

    public OauthServiceConfig(String apiKey,String apiSecret, String callback,
                              Class apiClass,String scope) {
        super();
        this.apiKey = apiKey;
        this.apiSecret = apiSecret;
        this.callback = callback;
        this.apiClass = apiClass;
        this.scope = scope ;
    }

    public void setApiSecret(String apiSecret) {
        this.apiSecret = apiSecret;
    }

    public void setCallback(String callback) {
        this.callback = callback;
    }

    public void setApiClass(Class apiClass) {
        this.apiClass = apiClass;
    }

    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }

    public String getApiSecret() {

        return apiSecret;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getScope() {

        return scope;
    }

    public String getCallback() {
        return callback;
    }

    public Class getApiClass() {
        return apiClass;
    }

    public String getApiKey() {

        return apiKey;
    }
}
