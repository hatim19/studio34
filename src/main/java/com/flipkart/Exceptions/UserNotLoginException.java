package com.flipkart.Exceptions;

/**
 * Created by hatim.ali on 22/6/16.
 */
public class UserNotLoginException extends  Exception {


    private static final long serialVersionUID = 1997753363232807009L;

    public UserNotLoginException()
    {
    }

    public UserNotLoginException(String message)
    {
        super(message);
    }

    public UserNotLoginException(Throwable cause)
    {
        super(cause);
    }

    public UserNotLoginException(String message, Throwable cause)
    {
        super(message, cause);
    }
}
