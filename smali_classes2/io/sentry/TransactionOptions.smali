.class public final Lio/sentry/TransactionOptions;
.super Ljava/lang/Object;
.source "TransactionOptions.java"


# annotations
.annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
.end annotation


# instance fields
.field private a:Lio/sentry/CustomSamplingContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Z

.field private g:Lio/sentry/TransactionFinishedCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/TransactionOptions;->a:Lio/sentry/CustomSamplingContext;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lio/sentry/TransactionOptions;->b:Z

    .line 4
    iput-object v0, p0, Lio/sentry/TransactionOptions;->c:Ljava/util/Date;

    .line 5
    iput-boolean v1, p0, Lio/sentry/TransactionOptions;->d:Z

    .line 6
    iput-object v0, p0, Lio/sentry/TransactionOptions;->e:Ljava/lang/Long;

    .line 7
    iput-boolean v1, p0, Lio/sentry/TransactionOptions;->f:Z

    .line 8
    iput-object v0, p0, Lio/sentry/TransactionOptions;->g:Lio/sentry/TransactionFinishedCallback;

    return-void
.end method


# virtual methods
.method public getCustomSamplingContext()Lio/sentry/CustomSamplingContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/TransactionOptions;->a:Lio/sentry/CustomSamplingContext;

    return-object v0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/TransactionOptions;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartTimestamp()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/TransactionOptions;->c:Ljava/util/Date;

    return-object v0
.end method

.method public getTransactionFinishedCallback()Lio/sentry/TransactionFinishedCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/TransactionOptions;->g:Lio/sentry/TransactionFinishedCallback;

    return-object v0
.end method

.method public isBindToScope()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/TransactionOptions;->b:Z

    return v0
.end method

.method public isTrimEnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/TransactionOptions;->f:Z

    return v0
.end method

.method public isWaitForChildren()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/TransactionOptions;->d:Z

    return v0
.end method

.method public setBindToScope(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/TransactionOptions;->b:Z

    return-void
.end method

.method public setCustomSamplingContext(Lio/sentry/CustomSamplingContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/TransactionOptions;->a:Lio/sentry/CustomSamplingContext;

    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/TransactionOptions;->e:Ljava/lang/Long;

    return-void
.end method

.method public setStartTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/TransactionOptions;->c:Ljava/util/Date;

    return-void
.end method

.method public setTransactionFinishedCallback(Lio/sentry/TransactionFinishedCallback;)V
    .locals 0
    .param p1    # Lio/sentry/TransactionFinishedCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/TransactionOptions;->g:Lio/sentry/TransactionFinishedCallback;

    return-void
.end method

.method public setTrimEnd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/TransactionOptions;->f:Z

    return-void
.end method

.method public setWaitForChildren(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/TransactionOptions;->d:Z

    return-void
.end method
