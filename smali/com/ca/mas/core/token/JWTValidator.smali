.class public interface abstract Lcom/ca/mas/core/token/JWTValidator;
.super Ljava/lang/Object;
.source "JWTValidator.java"


# virtual methods
.method public abstract validate(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/token/IdToken;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/token/JWTInvalidSignatureException;,
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation
.end method
