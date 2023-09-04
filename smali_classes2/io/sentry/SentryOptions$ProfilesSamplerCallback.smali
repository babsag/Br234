.class public interface abstract Lio/sentry/SentryOptions$ProfilesSamplerCallback;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfilesSamplerCallback"
.end annotation


# virtual methods
.method public abstract sample(Lio/sentry/SamplingContext;)Ljava/lang/Double;
    .param p1    # Lio/sentry/SamplingContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
