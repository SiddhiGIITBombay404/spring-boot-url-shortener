package com.siddhi.urlshortener.domain.services;

import com.siddhi.urlshortener.domain.entities.ShortUrl;
import com.siddhi.urlshortener.domain.entities.User;
import com.siddhi.urlshortener.domain.models.ShortUrlDto;
import com.siddhi.urlshortener.domain.models.UserDto;
import org.springframework.stereotype.Component;

@Component
public class EntityMapper {

    public ShortUrlDto toShortUrlDto(ShortUrl shortUrl) {
        return new ShortUrlDto(
                shortUrl.getId(),
                shortUrl.getShortKey(),
                shortUrl.getOriginalUrl(),
                shortUrl.getIsPrivate(),
                shortUrl.getExpiresAt(),
                shortUrl.getCreatedBy() != null ? toUserDto(shortUrl.getCreatedBy()) : null,
                shortUrl.getClickCount(),
                shortUrl.getCreatedAt()
        );
    }

    public UserDto toUserDto(User user){
        return new UserDto(user.getId(),user.getName());
    }
}
