#region License

// Open Behavioral Health Information Technology Architecture (OBHITA.org)
// 
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#endregion

using System;
using System.Windows;
using System.Windows.Interactivity;
using Telerik.Windows.Controls;
using PropertyMetadata = Telerik.Windows.PropertyMetadata;

namespace Rem.Ria.Infrastructure.View.Behavior
{
    /// <summary>
    /// Class for behaviing RAD tree view begin edit.
    /// </summary>
    public class RadTreeViewBeginEditBehavior : Behavior<RadTreeView>
    {
        #region Constants and Fields

        /// <summary>
        /// Dependency Property for BeginEditFlagProperty Property.
        /// </summary>
        public static readonly DependencyProperty BeginEditFlagProperty = DependencyProperty.Register (
            "BeginEditFlag", typeof( bool ), typeof( RadTreeViewBeginEditBehavior ), new PropertyMetadata ( false, OnBeginEditFlagChanged ) );

        #endregion

        #region Public Properties

        /// <summary>
        /// Gets or sets a value indicating whether [begin edit flag].
        /// </summary>
        /// <value><c>true</c> if [begin edit flag]; otherwise, <c>false</c>.</value>
        public bool BeginEditFlag
        {
            get { return ( bool )GetValue ( BeginEditFlagProperty ); }

            set { SetValue ( BeginEditFlagProperty, value ); }
        }

        #endregion

        #region Methods

        /// <summary>
        /// Called after the behavior is attached to an AssociatedObject.
        /// </summary>
        protected override void OnAttached ()
        {
            base.OnAttached ();
        }

        /// <summary>
        /// Called when the behavior is being detached from its AssociatedObject, but before it has actually occurred.
        /// </summary>
        protected override void OnDetaching ()
        {
            base.OnDetaching ();
            AssociatedObject.LayoutUpdated -= AssociatedObjectLayoutUpdated;
        }

        private static void OnBeginEditFlagChanged ( DependencyObject sender, DependencyPropertyChangedEventArgs e )
        {
            var behavior = sender as RadTreeViewBeginEditBehavior;
            if ( ( bool )e.NewValue )
            {
                var treeView = behavior.AssociatedObject;

                var selectedContainer = treeView.SelectedContainer;
                if ( selectedContainer != null )
                {
                    if ( !treeView.IsEditing && selectedContainer.IsEnabled )
                    {
                        var result = selectedContainer.BeginEdit ();
                    }
                }
                else if ( treeView.SelectedItem != null )
                {
                    var treeViewItemToEdit = treeView.ContainerFromItemRecursive ( treeView.SelectedItem );
                    if ( treeViewItemToEdit != null )
                    {
                        var result = treeViewItemToEdit.BeginEdit ();

                        //treeViewItemToEdit.IsInEditMode = true;
                    }
                    else
                    {
                        behavior.AssociatedObject.LayoutUpdated -= behavior.AssociatedObjectLayoutUpdated;
                        behavior.AssociatedObject.LayoutUpdated += behavior.AssociatedObjectLayoutUpdated;
                    }
                }
            }
        }

        private void AssociatedObjectLayoutUpdated ( object sender, EventArgs e )
        {
            if ( BeginEditFlag )
            {
                var treeView = AssociatedObject;

                var selectedContainer = treeView.SelectedContainer;
                if ( selectedContainer != null && !treeView.IsEditing && selectedContainer.IsEnabled )
                {
                    AssociatedObject.LayoutUpdated -= AssociatedObjectLayoutUpdated;
                    var result = selectedContainer.BeginEdit ();
                }
            }
        }

        #endregion
    }
}
