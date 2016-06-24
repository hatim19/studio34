package com.flipkart.models;

import com.flipkart.domain.Media;
import com.flipkart.domain.Section;

import java.util.List;

/**
 * Created by hatim.ali on 22/6/16.
 */
public class SuggestionResponse {

    private Media media;
    private String data ;

    public void setMedia(Media media) {
        this.media = media;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getData() {

        return data;
    }

    public Media getMedia() {

        return media;
    }

}
