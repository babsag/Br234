.class public final synthetic Lio/sentry/cache/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lio/sentry/cache/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/cache/a;

    invoke-direct {v0}, Lio/sentry/cache/a;-><init>()V

    sput-object v0, Lio/sentry/cache/a;->a:Lio/sentry/cache/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lio/sentry/cache/c;->f(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
