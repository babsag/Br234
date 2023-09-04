.class public final Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;
.super Ljava/lang/Object;
.source "ContextOtherInfo.kt"


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

.field private h:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;
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

.field private k:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "memory"
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

    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->b:Ljava/lang/String;

    const-string v0, "com.combateafraude.documentdetector"

    .line 4
    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->d:Ljava/lang/String;

    const-string v0, "6.39.6"

    .line 5
    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->e:Ljava/lang/String;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->f:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->g:[Ljava/lang/String;

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
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->c:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->g:[Ljava/lang/String;

    return-void
.end method

.method public final setLocationInfo(Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;)V
    .locals 0
    .param p1    # Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->h:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;

    return-void
.end method

.method public final setMemory(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->k:J

    return-void
.end method

.method public final setPowerSaveMode(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRooted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;->j:Z

    return-void
.end method
