.class public final Lio/sentry/NoOpTransactionProfiler;
.super Ljava/lang/Object;
.source "NoOpTransactionProfiler.java"

# interfaces
.implements Lio/sentry/ITransactionProfiler;


# static fields
.field private static final a:Lio/sentry/NoOpTransactionProfiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/NoOpTransactionProfiler;

    invoke-direct {v0}, Lio/sentry/NoOpTransactionProfiler;-><init>()V

    sput-object v0, Lio/sentry/NoOpTransactionProfiler;->a:Lio/sentry/NoOpTransactionProfiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpTransactionProfiler;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/NoOpTransactionProfiler;->a:Lio/sentry/NoOpTransactionProfiler;

    return-object v0
.end method


# virtual methods
.method public onTransactionFinish(Lio/sentry/ITransaction;)V
    .locals 0
    .param p1    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransactionStart(Lio/sentry/ITransaction;)V
    .locals 0
    .param p1    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
