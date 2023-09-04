.class final Lcom/google/android/gms/internal/measurement/k0;
.super Lcom/google/android/gms/internal/measurement/zzag$b;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.6.0"


# instance fields
.field private final synthetic e:Landroid/app/Activity;

.field private final synthetic f:Lcom/google/android/gms/internal/measurement/zzt;

.field private final synthetic g:Lcom/google/android/gms/internal/measurement/zzag$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzag$c;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/zzt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k0;->g:Lcom/google/android/gms/internal/measurement/zzag$c;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k0;->e:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/k0;->f:Lcom/google/android/gms/internal/measurement/zzt;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzag$c;->a:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag$b;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k0;->g:Lcom/google/android/gms/internal/measurement/zzag$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzag$c;->a:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Lcom/google/android/gms/internal/measurement/zzag;)Lcom/google/android/gms/internal/measurement/zzv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/k0;->e:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/k0;->f:Lcom/google/android/gms/internal/measurement/zzt;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzag$b;->b:J

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzv;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzw;J)V

    return-void
.end method
