.class public interface abstract Lio/sentry/android/core/ANRWatchDog$ANRListener;
.super Ljava/lang/Object;
.source "ANRWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ANRWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ANRListener"
.end annotation


# virtual methods
.method public abstract onAppNotResponding(Lio/sentry/android/core/c0;)V
    .param p1    # Lio/sentry/android/core/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
