.class public final synthetic Lio/sentry/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/z0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/e;->a:Lio/sentry/z0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/e;->a:Lio/sentry/z0;

    invoke-virtual {v0}, Lio/sentry/z0;->g()Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
