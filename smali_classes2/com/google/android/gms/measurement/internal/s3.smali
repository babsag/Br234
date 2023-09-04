.class final Lcom/google/android/gms/measurement/internal/s3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzgz;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzfv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzgz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s3;->b:Lcom/google/android/gms/measurement/internal/zzfv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s3;->a:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s3;->b:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s3;->a:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Lcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzgz;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s3;->b:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s3;->a:Lcom/google/android/gms/measurement/internal/zzgz;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgz;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Lcom/google/android/gms/internal/measurement/zzae;)V

    return-void
.end method
