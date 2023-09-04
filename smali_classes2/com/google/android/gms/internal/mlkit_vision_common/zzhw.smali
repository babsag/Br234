.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.2.1"


# annotations
.annotation runtime Lcom/google/firebase/encoders/annotations/Encodable;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzho;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzhu;Lcom/google/android/gms/internal/mlkit_vision_common/zzhv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhu;->zzg(Lcom/google/android/gms/internal/mlkit_vision_common/zzhu;)Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhu;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzhu;)Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhu;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzhu;)Lcom/google/android/gms/internal/mlkit_vision_common/zzho;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzho;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzho;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_vision_common/zzai;
        zza = 0x32
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzho;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzht;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_vision_common/zzai;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_vision_common/zzai;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;

    return-object v0
.end method
