.class public interface abstract Lcom/ca/mas/foundation/MASRequest;
.super Ljava/lang/Object;
.source "MASRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;,
        Lcom/ca/mas/foundation/MASRequest$Method;
    }
.end annotation


# virtual methods
.method public abstract getBody()Lcom/ca/mas/foundation/MASRequestBody;
.end method

.method public abstract getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;
.end method

.method public abstract getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;
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

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getResponseBody()Lcom/ca/mas/foundation/MASResponseBody;
.end method

.method public abstract getScope()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/net/URL;
.end method

.method public abstract isPublic()Z
.end method

.method public abstract notifyOnCancel()Z
.end method
