.class public final synthetic Lio/sentry/android/core/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/e0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/u;->a:Lio/sentry/android/core/e0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/u;->a:Lio/sentry/android/core/e0;

    invoke-virtual {v0}, Lio/sentry/android/core/e0;->K()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
