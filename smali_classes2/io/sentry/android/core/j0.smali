.class final Lio/sentry/android/core/j0;
.super Ljava/lang/Object;
.source "NoOpDebugImagesLoader.java"

# interfaces
.implements Lio/sentry/android/core/IDebugImagesLoader;


# static fields
.field private static final a:Lio/sentry/android/core/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/j0;

    invoke-direct {v0}, Lio/sentry/android/core/j0;-><init>()V

    sput-object v0, Lio/sentry/android/core/j0;->a:Lio/sentry/android/core/j0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/sentry/android/core/j0;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/j0;->a:Lio/sentry/android/core/j0;

    return-object v0
.end method


# virtual methods
.method public clearDebugImages()V
    .locals 0

    return-void
.end method

.method public loadDebugImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
