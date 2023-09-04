.class Lio/flutter/plugins/googlemaps/e;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method static A(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->v(Ljava/lang/Object;)D

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->v(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static B(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->A(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->A(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method

.method private static C(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static D(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static E(Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/plugins/googlemaps/e;->J(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    :goto_1
    const/4 v2, -0x1

    goto :goto_2

    :sswitch_0
    const-string v2, "dash"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_1
    const-string v2, "gap"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string v5, "dot"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as PatternItem"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :pswitch_0
    new-instance v2, Lcom/google/android/gms/maps/model/Dash;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/maps/model/Dash;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :pswitch_1
    new-instance v2, Lcom/google/android/gms/maps/model/Gap;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/maps/model/Gap;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 10
    :pswitch_2
    new-instance v1, Lcom/google/android/gms/maps/model/Dot;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/Dot;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x18549 -> :sswitch_2
        0x18ed6 -> :sswitch_1
        0x2eef92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static F(Ljava/lang/Object;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "density"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/googlemaps/e;->y(Ljava/lang/Object;F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method static G(Ljava/lang/Object;)Landroid/graphics/Point;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/Map;

    .line 2
    new-instance v0, Landroid/graphics/Point;

    const-string v1, "x"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "y"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static H(Ljava/lang/Object;F)Landroid/graphics/Point;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "density"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lio/flutter/plugins/googlemaps/e;->F(Ljava/lang/Object;F)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lio/flutter/plugins/googlemaps/e;->F(Ljava/lang/Object;F)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static I(Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v1

    float-to-double v5, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static J(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static a(Lcom/google/android/gms/maps/model/CameraPosition;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget v1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "bearing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->j(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "tilt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget p0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "zoom"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "circleId"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "circleId"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static c(Ljava/util/List;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/google/android/gms/maps/model/BitmapDescriptor;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->p(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to interpret bytes as a valid image."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromBytes should have exactly one argument, the bytes. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static d(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/c;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "sink"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->D(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "consumeTapEvents"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/c;->a(Z)V

    :cond_0
    const-string v0, "fillColor"

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->z(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/c;->setFillColor(I)V

    :cond_1
    const-string v0, "strokeColor"

    .line 6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->z(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/c;->setStrokeColor(I)V

    :cond_2
    const-string v0, "visible"

    .line 8
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/c;->setVisible(Z)V

    :cond_3
    const-string v0, "strokeWidth"

    .line 10
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->z(Ljava/lang/Object;)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/c;->setStrokeWidth(F)V

    :cond_4
    const-string v0, "zIndex"

    .line 12
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/c;->setZIndex(F)V

    :cond_5
    const-string v0, "center"

    .line 14
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->A(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/c;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_6
    const-string v0, "radius"

    .line 16
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->v(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/flutter/plugins/googlemaps/c;->setRadius(D)V

    :cond_7
    const-string p1, "circleId"

    .line 18
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_8

    return-object p0

    .line 19
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "circleId was null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static e(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "sink"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->D(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "cameraTargetBounds"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->B(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->d(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    :cond_0
    const-string v0, "compassEnabled"

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setCompassEnabled(Z)V

    :cond_1
    const-string v0, "mapToolbarEnabled"

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setMapToolbarEnabled(Z)V

    :cond_2
    const-string v0, "mapType"

    .line 9
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->z(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setMapType(I)V

    :cond_3
    const-string v0, "minMaxZoomPreference"

    .line 11
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 12
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/plugins/googlemaps/e;->x(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->x(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 15
    invoke-interface {p1, v3, v0}, Lio/flutter/plugins/googlemaps/h;->b(Ljava/lang/Float;Ljava/lang/Float;)V

    :cond_4
    const-string v0, "padding"

    .line 16
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v1

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v2

    const/4 v3, 0x2

    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v3

    const/4 v4, 0x3

    .line 21
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v0

    .line 22
    invoke-interface {p1, v1, v2, v3, v0}, Lio/flutter/plugins/googlemaps/h;->c(FFFF)V

    :cond_5
    const-string v0, "rotateGesturesEnabled"

    .line 23
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 24
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setRotateGesturesEnabled(Z)V

    :cond_6
    const-string v0, "scrollGesturesEnabled"

    .line 25
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 26
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setScrollGesturesEnabled(Z)V

    :cond_7
    const-string v0, "tiltGesturesEnabled"

    .line 27
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 28
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setTiltGesturesEnabled(Z)V

    :cond_8
    const-string v0, "trackCameraPosition"

    .line 29
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 30
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->a(Z)V

    :cond_9
    const-string v0, "zoomGesturesEnabled"

    .line 31
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 32
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setZoomGesturesEnabled(Z)V

    :cond_a
    const-string v0, "myLocationEnabled"

    .line 33
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 34
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setMyLocationEnabled(Z)V

    :cond_b
    const-string v0, "zoomControlsEnabled"

    .line 35
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 36
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setZoomControlsEnabled(Z)V

    :cond_c
    const-string v0, "myLocationButtonEnabled"

    .line 37
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 38
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setMyLocationButtonEnabled(Z)V

    :cond_d
    const-string v0, "indoorEnabled"

    .line 39
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 40
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setIndoorEnabled(Z)V

    :cond_e
    const-string v0, "trafficEnabled"

    .line 41
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 42
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/h;->setTrafficEnabled(Z)V

    :cond_f
    const-string v0, "buildingsEnabled"

    .line 43
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 44
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1, p0}, Lio/flutter/plugins/googlemaps/h;->setBuildingsEnabled(Z)V

    :cond_10
    return-void
.end method

.method private static f(Lio/flutter/plugins/googlemaps/k;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sink",
            "infoWindow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/googlemaps/k;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "snippet"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0, v0, v1}, Lio/flutter/plugins/googlemaps/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "anchor"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result p1

    invoke-interface {p0, v0, p1}, Lio/flutter/plugins/googlemaps/k;->setInfoWindowAnchor(FF)V

    :cond_1
    return-void
.end method

.method static g(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/k;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "sink"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->D(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "alpha"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/k;->setAlpha(F)V

    :cond_0
    const-string v0, "anchor"

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v1, v0}, Lio/flutter/plugins/googlemaps/k;->setAnchor(FF)V

    :cond_1
    const-string v0, "consumeTapEvents"

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/k;->a(Z)V

    :cond_2
    const-string v0, "draggable"

    .line 9
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/k;->setDraggable(Z)V

    :cond_3
    const-string v0, "flat"

    .line 11
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/k;->setFlat(Z)V

    :cond_4
    const-string v0, "icon"

    .line 13
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->q(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/k;->b(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    :cond_5
    const-string v0, "infoWindow"

    .line 15
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 16
    check-cast v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/e;->f(Lio/flutter/plugins/googlemaps/k;Ljava/util/Map;)V

    :cond_6
    const-string v0, "position"

    .line 17
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 18
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->A(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/k;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_7
    const-string v0, "rotation"

    .line 19
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 20
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/k;->setRotation(F)V

    :cond_8
    const-string v0, "visible"

    .line 21
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 22
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/k;->setVisible(Z)V

    :cond_9
    const-string v0, "zIndex"

    .line 23
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 24
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/k;->setZIndex(F)V

    :cond_a
    const-string p1, "markerId"

    .line 25
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_b

    return-object p0

    .line 26
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "markerId was null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static h(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/o;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "sink"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->D(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "consumeTapEvents"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/o;->a(Z)V

    :cond_0
    const-string v0, "geodesic"

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/o;->setGeodesic(Z)V

    :cond_1
    const-string v0, "visible"

    .line 6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/o;->setVisible(Z)V

    :cond_2
    const-string v0, "fillColor"

    .line 8
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->z(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/o;->setFillColor(I)V

    :cond_3
    const-string v0, "strokeColor"

    .line 10
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->z(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/o;->setStrokeColor(I)V

    :cond_4
    const-string v0, "strokeWidth"

    .line 12
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->z(Ljava/lang/Object;)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/o;->setStrokeWidth(F)V

    :cond_5
    const-string v0, "zIndex"

    .line 14
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/o;->setZIndex(F)V

    :cond_6
    const-string v0, "points"

    .line 16
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/o;->setPoints(Ljava/util/List;)V

    :cond_7
    const-string p1, "polygonId"

    .line 18
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_8

    return-object p0

    .line 19
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "polygonId was null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static i(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/t;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "sink"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->D(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "consumeTapEvents"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->a(Z)V

    :cond_0
    const-string v0, "color"

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->z(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->setColor(I)V

    :cond_1
    const-string v0, "endCap"

    .line 6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->u(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/Cap;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V

    :cond_2
    const-string v0, "geodesic"

    .line 8
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->setGeodesic(Z)V

    :cond_3
    const-string v0, "jointType"

    .line 10
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->z(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->setJointType(I)V

    :cond_4
    const-string v0, "startCap"

    .line 12
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->u(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/Cap;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->setStartCap(Lcom/google/android/gms/maps/model/Cap;)V

    :cond_5
    const-string v0, "visible"

    .line 14
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->r(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->setVisible(Z)V

    :cond_6
    const-string v0, "width"

    .line 16
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->z(Ljava/lang/Object;)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->setWidth(F)V

    :cond_7
    const-string v0, "zIndex"

    .line 18
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 19
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->setZIndex(F)V

    :cond_8
    const-string v0, "points"

    .line 20
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 21
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->setPoints(Ljava/util/List;)V

    :cond_9
    const-string v0, "pattern"

    .line 22
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 23
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/t;->setPattern(Ljava/util/List;)V

    :cond_a
    const-string p1, "polylineId"

    .line 24
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_b

    return-object p0

    .line 25
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "polylineId was null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static j(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latLng"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Double;

    .line 1
    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static k(Lcom/google/android/gms/maps/model/LatLngBounds;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latLngBounds"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->j(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "southwest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->j(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "northeast"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static l(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markerId"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "markerId"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static m(Landroid/graphics/Point;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "y"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static n(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "polygonId"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "polygonId"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static o(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "polylineId"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "polylineId"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static p(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p0, [B

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to decode bytes as a valid bitmap."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static q(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/flutter/plugins/googlemaps/e;->J(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "defaultMarker"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "fromBytes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "fromAsset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "fromAssetImage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as BitmapDescriptor"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v6, :cond_4

    .line 5
    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 6
    :cond_4
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_1
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->c(Ljava/util/List;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v5, :cond_5

    .line 9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->J(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/view/FlutterMain;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 11
    :cond_5
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->J(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->J(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/flutter/view/FlutterMain;->getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v4, :cond_6

    .line 14
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->J(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/view/FlutterMain;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 16
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'fromAssetImage\' Expected exactly 3 arguments, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1b57f46b -> :sswitch_3
        0x3281d66 -> :sswitch_2
        0x338f2e1 -> :sswitch_1
        0x2ec1e1db -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static r(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static s(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->D(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const-string v1, "bearing"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    const-string v1, "target"

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->A(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    const-string v1, "tilt"

    .line 5
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    const-string v1, "zoom"

    .line 6
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method static t(Ljava/lang/Object;F)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "density"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/flutter/plugins/googlemaps/e;->J(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "newLatLngBounds"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_1
    const-string v1, "newCameraPosition"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_2
    const-string v1, "zoomOut"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "newLatLngZoom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "scrollBy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "zoomTo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "zoomIn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "zoomBy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_8
    const-string v3, "newLatLng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot interpret "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as CameraUpdate"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->B(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lio/flutter/plugins/googlemaps/e;->F(Ljava/lang/Object;F)I

    move-result p1

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->s(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomOut()Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->A(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lio/flutter/plugins/googlemaps/e;->y(Ljava/lang/Object;F)F

    move-result p0

    .line 10
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lio/flutter/plugins/googlemaps/e;->y(Ljava/lang/Object;F)F

    move-result p1

    .line 11
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->scrollBy(FF)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_6
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomIn()Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v4, :cond_9

    .line 15
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomBy(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 16
    :cond_9
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lio/flutter/plugins/googlemaps/e;->H(Ljava/lang/Object;F)Landroid/graphics/Point;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomBy(FLandroid/graphics/Point;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->A(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x307ef13a -> :sswitch_8
        -0x29807c76 -> :sswitch_7
        -0x29807ba8 -> :sswitch_6
        -0x29807a52 -> :sswitch_5
        -0x17f88ffc -> :sswitch_4
        -0x8a52c47 -> :sswitch_3
        -0x68ee185 -> :sswitch_2
        0x1526e92e -> :sswitch_1
        0x6303451b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static u(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/Cap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->C(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/flutter/plugins/googlemaps/e;->J(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "customCap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "squareCap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "buttCap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "roundCap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as Cap"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v4, :cond_4

    .line 5
    new-instance p0, Lcom/google/android/gms/maps/model/CustomCap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->q(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    return-object p0

    .line 6
    :cond_4
    new-instance p0, Lcom/google/android/gms/maps/model/CustomCap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->q(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;F)V

    return-object p0

    .line 7
    :pswitch_1
    new-instance p0, Lcom/google/android/gms/maps/model/SquareCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/SquareCap;-><init>()V

    return-object p0

    .line 8
    :pswitch_2
    new-instance p0, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    return-object p0

    .line 9
    :pswitch_3
    new-instance p0, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2bc9c -> :sswitch_3
        0xe6218bf -> :sswitch_2
        0x4e573d75 -> :sswitch_1
        0x600dfaa1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static v(Ljava/lang/Object;)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static w(Ljava/lang/Object;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static x(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static y(Ljava/lang/Object;F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "density"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/e;->w(Ljava/lang/Object;)F

    move-result p0

    mul-float p0, p0, p1

    return p0
.end method

.method private static z(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
