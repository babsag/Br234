.class public final synthetic Lcom/google/mlkit/vision/text/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/text/internal/zze;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/text/internal/zze;

    invoke-direct {v0}, Lcom/google/mlkit/vision/text/internal/zze;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/text/internal/zze;->zza:Lcom/google/mlkit/vision/text/internal/zze;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/mlkit/vision/text/Text$Line;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Line;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
