.class public final Lio/sentry/internal/modules/NoOpModulesLoader;
.super Ljava/lang/Object;
.source "NoOpModulesLoader.java"

# interfaces
.implements Lio/sentry/internal/modules/IModulesLoader;


# static fields
.field private static final a:Lio/sentry/internal/modules/NoOpModulesLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/internal/modules/NoOpModulesLoader;

    invoke-direct {v0}, Lio/sentry/internal/modules/NoOpModulesLoader;-><init>()V

    sput-object v0, Lio/sentry/internal/modules/NoOpModulesLoader;->a:Lio/sentry/internal/modules/NoOpModulesLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/internal/modules/NoOpModulesLoader;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/internal/modules/NoOpModulesLoader;->a:Lio/sentry/internal/modules/NoOpModulesLoader;

    return-object v0
.end method


# virtual methods
.method public getOrLoadModules()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
