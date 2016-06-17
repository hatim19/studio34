package com.flipkart.test; /**
 * Created by hatim.ali on 9/6/16.
 */


import java.util.*;
import java.io.*;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;


public class InputStreamToFileApp {

        private final Map m = Collections.synchronizedMap(new LinkedHashMap( ));

        public  void putIncache(int key) {
            InputStream in = null;
            OutputStream outputStream = null;
            try {
                in = new FileInputStream(new File("src/1.mp3")) ;
                System.out.println("inside");
                outputStream = new FileOutputStream(new File("src/" + (key+1) + ".mp3"));
                int read = 0;
                byte[] bytes = new byte[1024];
                while ((read = in.read(bytes)) != -1) {
                    outputStream.write(bytes, 0, read);
                }
                System.out.println("Done!");
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
            }
        }



    public  void putIncache2( ) {


        InputStream in = null;
        OutputStream outputStream = null;
        if ( m.containsKey(2) ){
            System.out.println("already in cache");
            return ;
        }
        try {
                in = new FileInputStream(new File("src/1.mp3")) ;
                //in = new URL("http://172.17.68.31:8080/nursery64.mp3").openStream() ;
                System.out.println("inside");
                byte[] bytes = new byte[1024];
                ByteArrayOutputStream os = new ByteArrayOutputStream();
                int line = 0;
                while ((line = in.read(bytes)) != -1) {
                    os.write(bytes, 0, line);
                }
                m.put(2,bytes);
                String s = new sun.misc.BASE64Encoder().encode(bytes);
                System.out.println(s);

        } catch (IOException e) {
            try {
                in.close();
            }catch (Exception ee){
                ee.printStackTrace();
            }
            e.printStackTrace();
        } finally {

        }
    }


        public  InputStream getFromCache( int key ) {

            if ( m.containsKey(key) ){
                return (InputStream) m.get(key);
            }
            return null ;

        }

    public  byte[] getFromCache2( int key ) {
        if ( m.containsKey(key) ){
            return (byte[]) m.get(key);
        }
        return null ;
    }




}
