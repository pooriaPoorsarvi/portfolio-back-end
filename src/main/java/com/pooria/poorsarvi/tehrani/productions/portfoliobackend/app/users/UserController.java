package com.pooria.poorsarvi.tehrani.productions.portfoliobackend.app.users;

import com.pooria.poorsarvi.tehrani.productions.portfoliobackend.exceptions.EntityNotFoundInDBException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.validation.Valid;
import java.net.URI;
import java.util.Optional;

@RestController
public class UserController {
  UserRepository userRepository;

  UserController(UserRepository userRepository) {
    this.userRepository = userRepository;
  }

  @CrossOrigin()
  @PostMapping(path = "/users")
  public ResponseEntity<Object> createUser(@Valid @RequestBody UserEntity userEntity) {
    userEntity.id = 0;
    userRepository.save(userEntity);
    URI location =
        ServletUriComponentsBuilder.fromCurrentRequest()
            .path("/{ID}")
            .buildAndExpand(userEntity.getId())
            .toUri();
    return ResponseEntity.created(location).build();
  }

  @CrossOrigin()
  @GetMapping("/users/{ID}")
  UserEntity getUser(@PathVariable Integer ID) {
    Optional<UserEntity> result = userRepository.findById(ID);
    if (result.isPresent()) {
      return result.get();
    } else {
      throw new EntityNotFoundInDBException();
    }
  }
}
