.class final Lcom/google/android/gms/maps/f;
.super Lcom/google/android/gms/maps/internal/zzbm;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/f;->a:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbm;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStreetViewPanoramaClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/f;->a:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;->onStreetViewPanoramaClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    return-void
.end method
