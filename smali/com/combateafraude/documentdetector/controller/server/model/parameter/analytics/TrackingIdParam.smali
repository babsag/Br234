.class public final Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam;
.super Ljava/lang/Object;
.source "TrackingIdParam.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contextOtherInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceProject"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam;->Companion:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;)V
    .locals 1
    .param p1    # Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "contextOtherInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam;->a:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;

    const-string p1, "android"

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContextOtherInfo()Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam;->a:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/ContextOtherInfo;

    return-object v0
.end method
