.class public final Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;
.super Ljava/lang/Object;
.source "ContextOtherInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0019\u0010\u0016\u001a\u00020\u00152\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u00152\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0015\u0010\u0019\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u001bJ\u000e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00048\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00138\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;",
        "",
        "()V",
        "appPackageName",
        "",
        "brand",
        "installedApps",
        "",
        "[Ljava/lang/String;",
        "isPowerSaveMode",
        "",
        "Ljava/lang/Boolean;",
        "isRooted",
        "locationInfo",
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/LocationInfo;",
        "model",
        "sdkPackageName",
        "sdkVersion",
        "soVersion",
        "",
        "setAppPackageName",
        "",
        "setInstalledApps",
        "([Ljava/lang/String;)V",
        "setLocationInfo",
        "setPowerSaveMode",
        "powerSaveMode",
        "(Ljava/lang/Boolean;)V",
        "setRooted",
        "rooted",
        "FaceAuthenticator_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appPackageName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkPackageName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkVersion"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "soVersion"
    .end annotation
.end field

.field private g:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "installedApps"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/LocationInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPowerSaveMode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRooted"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "BRAND"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->b:Ljava/lang/String;

    const-string v0, "com.combateafraude.faceauthenticator"

    .line 4
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->d:Ljava/lang/String;

    const-string v0, "5.8.13"

    .line 5
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->e:Ljava/lang/String;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->f:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->g:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public final setInstalledApps([Ljava/lang/String;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "installedApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->g:[Ljava/lang/String;

    return-void
.end method

.method public final setLocationInfo(Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/LocationInfo;)V
    .locals 0
    .param p1    # Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/LocationInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->h:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/LocationInfo;

    return-void
.end method

.method public final setPowerSaveMode(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRooted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->j:Z

    return-void
.end method
