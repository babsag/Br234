.class public final synthetic Lio/sentry/transport/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# static fields
.field public static final synthetic a:Lio/sentry/transport/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/transport/l;

    invoke-direct {v0}, Lio/sentry/transport/l;-><init>()V

    sput-object v0, Lio/sentry/transport/l;->a:Lio/sentry/transport/l;

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

    check-cast p1, Lio/sentry/hints/SubmissionResult;

    invoke-static {p1}, Lio/sentry/transport/RateLimiter;->d(Lio/sentry/hints/SubmissionResult;)V

    return-void
.end method
