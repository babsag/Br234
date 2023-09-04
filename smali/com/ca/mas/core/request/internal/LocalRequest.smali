.class public interface abstract Lcom/ca/mas/core/request/internal/LocalRequest;
.super Ljava/lang/Object;
.source "LocalRequest.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ca/mas/foundation/MASRequest;"
    }
.end annotation


# virtual methods
.method public abstract send(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/core/context/MssoContext;",
            ")",
            "Lcom/ca/mas/foundation/MASResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
