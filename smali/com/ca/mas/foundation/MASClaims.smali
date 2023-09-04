.class public interface abstract Lcom/ca/mas/foundation/MASClaims;
.super Ljava/lang/Object;
.source "MASClaims.java"


# virtual methods
.method public abstract getAudience()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClaims()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpirationTime()Ljava/util/Date;
.end method

.method public abstract getIssuedAt()Ljava/util/Date;
.end method

.method public abstract getIssuer()Ljava/lang/String;
.end method

.method public abstract getJwtId()Ljava/lang/String;
.end method

.method public abstract getNotBefore()Ljava/util/Date;
.end method

.method public abstract getSubject()Ljava/lang/String;
.end method
