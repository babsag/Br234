.class public final Lio/sentry/SamplingContext;
.super Ljava/lang/Object;
.source "SamplingContext.java"


# instance fields
.field private final a:Lio/sentry/TransactionContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/sentry/CustomSamplingContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;)V
    .locals 1
    .param p1    # Lio/sentry/TransactionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/CustomSamplingContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transactionContexts is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/TransactionContext;

    iput-object p1, p0, Lio/sentry/SamplingContext;->a:Lio/sentry/TransactionContext;

    .line 3
    iput-object p2, p0, Lio/sentry/SamplingContext;->b:Lio/sentry/CustomSamplingContext;

    return-void
.end method


# virtual methods
.method public getCustomSamplingContext()Lio/sentry/CustomSamplingContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SamplingContext;->b:Lio/sentry/CustomSamplingContext;

    return-object v0
.end method

.method public getTransactionContext()Lio/sentry/TransactionContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SamplingContext;->a:Lio/sentry/TransactionContext;

    return-object v0
.end method
