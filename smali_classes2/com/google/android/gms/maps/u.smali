.class final Lcom/google/android/gms/maps/u;
.super Lcom/google/android/gms/maps/internal/zzba;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/u;->a:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzba;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMyLocationClick(Landroid/location/Location;)V
    .locals 1
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/u;->a:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;->onMyLocationClick(Landroid/location/Location;)V

    return-void
.end method
