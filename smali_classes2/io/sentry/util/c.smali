.class public final synthetic Lio/sentry/util/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryHintFallback;


# instance fields
.field public final synthetic a:Lio/sentry/util/HintUtils$SentryNullableConsumer;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/util/HintUtils$SentryNullableConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/util/c;->a:Lio/sentry/util/HintUtils$SentryNullableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/util/c;->a:Lio/sentry/util/HintUtils$SentryNullableConsumer;

    invoke-static {v0, p1, p2}, Lio/sentry/util/HintUtils;->b(Lio/sentry/util/HintUtils$SentryNullableConsumer;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
