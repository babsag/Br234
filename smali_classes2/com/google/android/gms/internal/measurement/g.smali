.class final Lcom/google/android/gms/internal/measurement/g;
.super Lcom/google/android/gms/internal/measurement/zzag$b;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.6.0"


# instance fields
.field private final synthetic e:Landroid/os/Bundle;

.field private final synthetic f:Lcom/google/android/gms/internal/measurement/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzag;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g;->f:Lcom/google/android/gms/internal/measurement/zzag;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/g;->e:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag$b;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g;->f:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Lcom/google/android/gms/internal/measurement/zzag;)Lcom/google/android/gms/internal/measurement/zzv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/g;->e:Landroid/os/Bundle;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzag$b;->a:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzv;->setConsent(Landroid/os/Bundle;J)V

    return-void
.end method
