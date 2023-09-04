.class public interface abstract Lcom/ca/mas/foundation/MASResponse;
.super Ljava/lang/Object;
.source "MASResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getBody()Lcom/ca/mas/foundation/MASResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ca/mas/foundation/MASResponseBody<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract getResponseMessage()Ljava/lang/String;
.end method
