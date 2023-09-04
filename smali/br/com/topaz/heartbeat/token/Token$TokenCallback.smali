.class public interface abstract Lbr/com/topaz/heartbeat/token/Token$TokenCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/heartbeat/token/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenCallback"
.end annotation


# virtual methods
.method public abstract onFailure(I)V
.end method

.method public abstract onSuccess(Lbr/com/topaz/heartbeat/token/TokenResponse;)V
.end method
