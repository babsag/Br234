.class public interface abstract Lio/sentry/util/HintUtils$SentryHintFallback;
.super Ljava/lang/Object;
.source "HintUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/util/HintUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SentryHintFallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract accept(Ljava/lang/Object;Ljava/lang/Class;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
