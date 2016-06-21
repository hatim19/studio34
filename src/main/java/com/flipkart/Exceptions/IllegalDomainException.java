package com.flipkart.Exceptions;

/**
 * Created by hatim.ali on 21/6/16.
 */
public class IllegalDomainException extends  Exception {

    private static final long serialVersionUID = 1997753363232807009L;

    public IllegalDomainException()
    {
    }

    public IllegalDomainException(String message)
    {
        super(message);
    }

    public IllegalDomainException(Throwable cause)
    {
        super(cause);
    }

    public IllegalDomainException(String message, Throwable cause)
    {
        super(message, cause);
    }

}
