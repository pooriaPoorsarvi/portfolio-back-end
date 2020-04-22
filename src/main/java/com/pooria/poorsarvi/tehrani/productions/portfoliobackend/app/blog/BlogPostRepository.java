package com.pooria.poorsarvi.tehrani.productions.portfoliobackend.app.blog;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface BlogPostRepository extends JpaRepository<BlogPostEntity, Integer> {
    Optional<BlogPostEntity> findById(Integer id);
    List<BlogPostEntity> findAll();
}
