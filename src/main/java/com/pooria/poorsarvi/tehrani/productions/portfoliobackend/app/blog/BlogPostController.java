package com.pooria.poorsarvi.tehrani.productions.portfoliobackend.app.blog;

import com.pooria.poorsarvi.tehrani.productions.portfoliobackend.exceptions.EntityNotFoundInDBException;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
public class BlogPostController {

  private BlogPostRepository blogPostRepository;

  public BlogPostController(BlogPostRepository blogPostRepository) {
    this.blogPostRepository = blogPostRepository;
  }
// TODO : change all cors to a specific website
  @CrossOrigin()
  @GetMapping("/blog-posts")
  List<BlogPostEntity> getBlogPosts() {
    return blogPostRepository.findAll();
  }

  @CrossOrigin()
  @GetMapping("/blog-posts/{ID}")
  BlogPostEntity getBlogPosts(@PathVariable Integer ID) {
    Optional<BlogPostEntity> result = blogPostRepository.findById(ID);
    if (result.isPresent()) {
      return result.get();
    } else {
      throw new EntityNotFoundInDBException();
    }
  }
}
