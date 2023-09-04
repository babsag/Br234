.class public final synthetic Lio/sentry/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/JsonObjectDeserializer$b;


# static fields
.field public static final synthetic a:Lio/sentry/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/i;

    invoke-direct {v0}, Lio/sentry/i;-><init>()V

    sput-object v0, Lio/sentry/i;->a:Lio/sentry/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/sentry/JsonObjectDeserializer;->g()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
