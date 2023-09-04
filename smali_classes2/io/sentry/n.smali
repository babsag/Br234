.class public final synthetic Lio/sentry/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# static fields
.field public static final synthetic a:Lio/sentry/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/n;

    invoke-direct {v0}, Lio/sentry/n;-><init>()V

    sput-object v0, Lio/sentry/n;->a:Lio/sentry/n;

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

    check-cast p1, Lio/sentry/hints/Resettable;

    invoke-static {p1}, Lio/sentry/OutboxSender;->d(Lio/sentry/hints/Resettable;)V

    return-void
.end method
