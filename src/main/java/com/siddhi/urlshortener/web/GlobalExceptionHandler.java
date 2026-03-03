package com.siddhi.urlshortener.web;

import com.siddhi.urlshortener.domain.exceptions.ShortUrlNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.resource.NoResourceFoundException;

@ControllerAdvice
public class GlobalExceptionHandler {

    private static final Logger log = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    @ExceptionHandler(ShortUrlNotFoundException.class)
    public String handleShortUrlNotFoundException(ShortUrlNotFoundException ex) {
        log.warn("Short URL not found: {}", ex.getMessage());
        return "error/404";
    }

    @ExceptionHandler(NoResourceFoundException.class)
    public String handleNoResourceFound(NoResourceFoundException ex) {
        return "error/404";
    }

    @ExceptionHandler(Exception.class)
    public String handleException(Exception ex) {
        log.error("Unhandled exception: {}", ex.getMessage(), ex);
        return "error/500";
    }
}