.class public final synthetic Lio/sentry/util/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryHintFallback;


# static fields
.field public static final synthetic a:Lio/sentry/util/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/util/a;

    invoke-direct {v0}, Lio/sentry/util/a;-><init>()V

    sput-object v0, Lio/sentry/util/a;->a:Lio/sentry/util/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p1, p2}, Lio/sentry/util/HintUtils;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
