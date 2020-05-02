package com.pooria.poorsarvi.tehrani.productions.portfoliobackend.app.users;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;


public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    @Override
    public Optional<UserEntity> findById(Integer Id);
}
