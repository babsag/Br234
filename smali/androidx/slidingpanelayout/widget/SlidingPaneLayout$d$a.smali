.class final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d$a;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;
    .locals 2

    .line 1
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;
    .locals 1

    .line 1
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p2
.end method

.method public c(I)[Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;
    .locals 0

    .line 1
    new-array p1, p1, [Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d$a;->a(Landroid/os/Parcel;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d$a;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d$a;->c(I)[Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

    move-result-object p1

    return-object p1
.end method
