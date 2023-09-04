.class final Lcom/google/android/gms/internal/mlkit_vision_common/i4;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.2.1"


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/i4;->a:Ljava/util/Map;

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlm;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzlm;

    const-string p0, ""

    .line 2
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
