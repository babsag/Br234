.class final Lcom/google/android/gms/measurement/internal/e4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzar;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/zzfw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfw;Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e4;->c:Lcom/google/android/gms/measurement/internal/zzfw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/e4;->a:Lcom/google/android/gms/measurement/internal/zzar;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/e4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e4;->c:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Lcom/google/android/gms/measurement/internal/zzfw;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e4;->c:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Lcom/google/android/gms/measurement/internal/zzfw;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e4;->a:Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;)V

    return-void
.end method
