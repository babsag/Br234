.class public abstract Lio/sentry/transport/TransportResult;
.super Ljava/lang/Object;
.source "TransportResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/TransportResult$c;,
        Lio/sentry/transport/TransportResult$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/transport/TransportResult$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/transport/TransportResult;-><init>()V

    return-void
.end method

.method public static error()Lio/sentry/transport/TransportResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Lio/sentry/transport/TransportResult;->error(I)Lio/sentry/transport/TransportResult;

    move-result-object v0

    return-object v0
.end method

.method public static error(I)Lio/sentry/transport/TransportResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/transport/TransportResult$b;

    invoke-direct {v0, p0}, Lio/sentry/transport/TransportResult$b;-><init>(I)V

    return-object v0
.end method

.method public static success()Lio/sentry/transport/TransportResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/transport/TransportResult$c;->a:Lio/sentry/transport/TransportResult$c;

    return-object v0
.end method


# virtual methods
.method public abstract getResponseCode()I
.end method

.method public abstract isSuccess()Z
.end method
