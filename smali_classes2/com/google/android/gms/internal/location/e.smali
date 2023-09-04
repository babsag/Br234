.class final Lcom/google/android/gms/internal/location/e;
.super Lcom/google/android/gms/internal/location/f;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/location/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/zzal;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/location/e;->a:Lcom/google/android/gms/location/zzal;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/f;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/location/zzaz;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/e;->a:Lcom/google/android/gms/location/zzal;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/location/zzaz;->zza(Lcom/google/android/gms/location/zzal;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method
