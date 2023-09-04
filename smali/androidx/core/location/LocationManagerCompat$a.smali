.class Landroidx/core/location/LocationManagerCompat$a;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static a(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)Z
    .locals 8
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 2
    :try_start_0
    sget-object v0, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.location.LocationRequest"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    .line 4
    :cond_0
    sget-object v0, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 5
    const-class v0, Landroid/location/LocationManager;

    const-string v5, "requestLocationUpdates"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v4

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v2

    .line 6
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    sget-object p2, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p3, v0, v4

    aput-object p4, v0, v2

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    :cond_2
    return v1
.end method

.method static b(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationManagerCompat$l;)Z
    .locals 8
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 2
    :try_start_0
    sget-object v0, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.location.LocationRequest"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    .line 4
    :cond_0
    sget-object v0, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 5
    const-class v0, Landroid/location/LocationManager;

    const-string v5, "requestLocationUpdates"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v4

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v2

    .line 6
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    sget-object p2, Landroidx/core/location/LocationManagerCompat;->b:Ljava/util/WeakHashMap;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    sget-object v0, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p3, v3, v4

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    aput-object p1, v3, v2

    .line 12
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p0, p3}, Landroidx/core/location/LocationManagerCompat;->d(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$l;)V

    .line 14
    monitor-exit p2

    return v4

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    return v1
.end method
