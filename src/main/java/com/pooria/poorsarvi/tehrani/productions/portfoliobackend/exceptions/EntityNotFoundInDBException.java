package com.pooria.poorsarvi.tehrani.productions.portfoliobackend.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.NOT_FOUND, reason = "entity not found")
public class EntityNotFoundInDBException extends RuntimeException {
}
