.class public final synthetic Lio/sentry/transport/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# static fields
.field public static final synthetic a:Lio/sentry/transport/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/transport/e;

    invoke-direct {v0}, Lio/sentry/transport/e;-><init>()V

    sput-object v0, Lio/sentry/transport/e;->a:Lio/sentry/transport/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/sentry/hints/Retryable;

    invoke-static {p1}, Lio/sentry/transport/AsyncHttpTransport$c;->h(Lio/sentry/hints/Retryable;)V

    return-void
.end method
