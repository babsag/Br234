.class public final synthetic Lcaf/io/z0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/SentryOptions$BeforeSendCallback;


# static fields
.field public static final synthetic a:Lcaf/io/z0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcaf/io/z0;

    invoke-direct {v0}, Lcaf/io/z0;-><init>()V

    sput-object v0, Lcaf/io/z0;->a:Lcaf/io/z0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0

    invoke-static {p1, p2}, Lcaf/io/Y;->f(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object p1

    return-object p1
.end method
