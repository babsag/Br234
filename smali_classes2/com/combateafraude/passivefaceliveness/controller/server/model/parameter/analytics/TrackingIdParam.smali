.class public final Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;
.super Ljava/lang/Object;
.source "TrackingIdParam.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SOURCE_PROJECT:Ljava/lang/String; = "android"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final contextOtherInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "otherInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceProject"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;->Companion:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam$a;

    return-void
.end method

.method public constructor <init>(Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;)V
    .locals 1
    .param p1    # Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "contextOtherInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;->contextOtherInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;

    const-string p1, "android"

    .line 3
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContextOtherInfo()Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;->contextOtherInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;

    return-object v0
.end method
