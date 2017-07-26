.class Landroid/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"

# interfaces
.implements Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24ServiceCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stopForeground(Landroid/app/Service;I)V
    .locals 0
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "flags"    # I

    .prologue
    .line 101
    invoke-static {p1, p2}, Landroid/support/v4/app/ServiceCompatApi24;->stopForeground(Landroid/app/Service;I)V

    .line 102
    return-void
.end method
