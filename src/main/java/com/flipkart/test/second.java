package com.flipkart.test;

import java.io.InputStream;
import java.io.OutputStream;

/**
 * Created by hatim.ali on 10/6/16.
 */


public class second {

    public static void main ( String args[ ] ) {
        InputStream  in = null ;
        OutputStream outputStream = null ;
        /*try{
        InputStreamToFileApp f = new InputStreamToFileApp() ;
        f.putIncache(1);

        in = f.getFromCache(1);

        outputStream =
                new FileOutputStream(new File("src/2.mp3"));

        int read = 0;
        byte[] bytes = new byte[1024];

        while ((read = in.read(bytes)) != -1) {
            outputStream.write(bytes, 0, read);
        }

    } catch (IOException e) {
        e.printStackTrace();
    } finally {
        if (in != null) {
            try {
                in.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (outputStream != null) {
            try {
                // outputStream.flush();
                outputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
    }

*/      try {
            InputStreamToFileApp f = new InputStreamToFileApp();
            f.putIncache2();

            /*byte[] bytes = f.getFromCache2(2);
            FileOutputStream fileOuputStream = new FileOutputStream("src/889.mp3");
            fileOuputStream.write(bytes);
            fileOuputStream.close();
            int k = 1 ;

            while ( k != 0 ){
            k = k - 1 ;
            f.putIncache2();
            byte[] bbytes = f.getFromCache2(2);
            fileOuputStream = new FileOutputStream("src/"+k+".mp3");
            fileOuputStream.write(bbytes);
            fileOuputStream.close();
            }*/
        }
        catch(Exception e){
            e.printStackTrace();
        }

        //System.out.println(f.getFromCache2(2));
        //f.putIncache(1);
    }

}
